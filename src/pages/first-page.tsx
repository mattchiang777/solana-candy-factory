import Link from 'next/link'

export default function FirstPage() {
    return (
        <div>
            <h1>First Page</h1>
            <h2>
                <Link href="/">
                    <a>Back to home</a>
                </Link>
            </h2>
        </div>
        
    )
};