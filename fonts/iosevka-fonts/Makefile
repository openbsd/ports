# There are many different variants of Iosevka. We only package a subset of
# them, but the layout of the port is designed for more to be added if need be.
#
# Each SUBDIR is one "variant" and because we use the TTC fonts (which allow
# glyphs to be shared, thus saving space) each variant contains all of the
# various "spacing variants".
#
# When adding a new variant, please use a SUBDIR whose name matches the suffix
# on the DISTFILE, e.g. 'SUBDIR += slab' for 'ttc-iosevka-slab-x.y.z.zip'.
# Similarly for the PKGNAME suffix.
#
# Please also make sure that new SUBDIRs package a top-level upstream package,
# and not a sub-package. e.g. we have a SUBDIR for the top-level 'slab' package
# and not for any sub-packages of 'slab', like 'fixed-slab' or 'term-slab'.
#
# For details on variants and sub-packages, see:
# https://github.com/be5invis/Iosevka/blob/main/doc/PACKAGE-LIST.md

SUBDIR =
SUBDIR += aile
SUBDIR += default
SUBDIR += etoile
SUBDIR += slab

.include <bsd.port.subdir.mk>
