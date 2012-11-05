# $OpenBSD: Makefile.inc,v 1.2 2012/11/05 20:27:52 espie Exp $

MODULES += base/xenocara
.if ${COMPONENT:M*-type1}
FONTSDIRS = lib/X11/fonts/Type1
.elif ${COMPONENT:M*-100dpi}
FONTSDIRS ?= lib/X11/fonts/100dpi
.elif ${COMPONENT:M*-75dpi}
FONTSDIRS ?= lib/X11/fonts/75dpi
.elif ${COMPONENT:M*-ttf}
FONTSDIRS ?= lib/X11/fonts/TTF
.elif ${COMPONENT:M*-misc}
FONTSDIRS ?= lib/X11/fonts/misc
.elif ${COMPONENT:M*-cyrillic}
FONTSDIRS ?= lib/X11/fonts/cyrillic
.endif


PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

XDEPS ?= font/util font/encodings lib/fontconfig app/bdftopcf app/mkfontdir
