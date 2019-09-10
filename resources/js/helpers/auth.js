import axios from "axios";
import {
    setAuthorization
} from './general';

export function login(credentials) {
    return new Promise((res, rej) => {
        axios.post('/api/login', credentials)
            .then((response) => {
                setAuthorization(response.data.access_token);
                res(response.data);
            })
            .catch((error) => {
                if (error.response.data.errors){
                    rej(error.response.data.errors);
                }
            })
    })
}

export function register(credentials) {
    return new Promise((res, rej) => {
        axios.post('/api/register', credentials)
            .then((response) => {
                setAuthorization(response.data.access_token);
                res(response.data);
            })
            .catch((error) => {
                rej(error.response.data.errors);
            })
    })
}

export function getLocalUser() {
    const userStr = localStorage.getItem("user");

    if (!userStr) {
        return null;
    }
    return JSON.parse(userStr);
}
