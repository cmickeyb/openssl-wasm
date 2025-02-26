#! /bin/sh

cd openssl || exit 1
for patch in ../patches/*.patch; do
    patch -p1 -N --dry-run --silent <"$patch" >/dev/null 2>/dev/null || continue
    patch -p1 <"$patch"
done
