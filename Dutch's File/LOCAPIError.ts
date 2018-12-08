class LOCAPIError extends Error {
    constructor(message: string) {
        super()
        this.name = 'LOCAPIError';
        this.message = message;
    }
    
}