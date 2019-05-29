# $OpenBSD: Makefile,v 1.1.1.1 2019/05/29 11:42:34 espie Exp $

PKG_ARCH =	*
COMMENT =	pictures for your background by OpenBSD developers
CATEGORIES = 	graphics
MAINTAINER = 	Marc Espie <espie@openbsd.org>

GH_PROJECT = 	openbsd-backgrounds
GH_TAGNAME = 	1.5
GH_ACCOUNT = 	marcespie

FLAVORS =	large

FLAVOR ?=

.if ${FLAVOR} == "large"
W = 2440
H = 1600
.endif

W ?= 1920
H ?= 1080

# CC-by 4.0
PERMIT_PACKAGE_CDROM = Yes

NO_TEST = 	Yes
NO_BUILD =	Yes
BUILD_DEPENDS =	graphics/GraphicsMagick


BG = share/openbsd-backgrounds
BGPICS = share/openbsd-backgrounds/pictures
SUBST_VARS = BG BGPICS
DESTINATION = ${PREFIX}/${BG}
EXTRACT_ONLY =

do-install:
	${INSTALL_DATA_DIR} ${DESTINATION}
	cd ${DESTINATION} && tar -s ',^${DISTNAME}/,,' -zxf ${FULLDISTDIR}/${DISTFILES}
	rmdir ${DESTINATION}/${DISTNAME}

post-install:
	cd ${DESTINATION} && gm mogrify -resize '$Hx$W>^' `cat portrait`
	cd ${DESTINATION} && gm mogrify -resize '$Wx$H>^' `cat landscape`
	cd ${DESTINATION} && gm mogrify -resize '$Wx$W>^' `cat square`

.include <bsd.port.mk>
