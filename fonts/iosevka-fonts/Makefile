# $OpenBSD: Makefile,v 1.2 2020/08/21 13:53:30 edd Exp $

# There are many different variants of Iosevka. We only package a subset of
# them, but the layout of the port is designed for more to be added if need be.
#
# Each SUBDIR is one "variant" and because we use the TTC fonts (which allow
# glyphs to be shared, thus saving space) each variant contains all of the
# various "spacing variants".
#
# For details on variants and spacing variants, see:
# https://github.com/be5invis/Iosevka/releases
#
# When adding a new variant, please use a SUBDIR whose name matches the suffix
# on the DISTFILE, e.g. 'SUBDIR += slab' for 'ttc-iosevka-slab-x.y.z.zip'.
# Similarly for the PKGNAME suffix.

SUBDIR =
SUBDIR += default

.include <bsd.port.subdir.mk>
