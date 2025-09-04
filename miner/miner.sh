echo "Starting this miner script..."

START=10
END=1000

for word in $(cat "../data/dictionary"); do
    for nonce in $(seq $START $END); do
        CANDIDATE="${nonce}${word}"
        HASH=$(echo -n "$CANDIDATE" | sha256sum | awk '{print $1}')
        # to see each candidate and hash, uncomment the next line
        # echo "$CANDIDATE -> $HASH"
        if [[ $HASH == 00000* ]]; then
            echo "Found valid nonce-word combination - $CANDIDATE with hash: $HASH"
            exit 0
        fi
    done
done

# in case there is no match at all
echo "No match found in range $START–$END."
