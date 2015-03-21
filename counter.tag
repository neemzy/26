<counter>
    <h1 class="name">{opts.name}</h1>
    <img class="avatar" src={opts.avatar} alt={opts.name} style="opacity: {opacity};" />
    <p class="count">{current}</p>
    <button class="action" onclick={increase}>Grow old</button>

    <style scoped>
        :scope {
            box-sizing: border-box;
            display: block;
            font-family: sans-serif;
            text-align: center;
        }

        *,
        *:before,
        *:after {
            box-sizing: inherit;
        }

        .avatar {
            border-radius: 1rem;
            opacity: 0;
        }

        .count {
            margin: 0.25em 0;
            font-size: 5rem;
        }

        .action {
            font-size: 2rem;
        }
    </style>

    this.current = 0;
    this.opacity = 0;

    increase() {
        if (opts.max > this.current) {
            this.current++;
            this.opacity = this.current / opts.max;

            if (opts.max == this.current) {
                this.showtime();
            }
        }
    }

    showtime() {
        window.location = opts.target;
    }
</counter>
