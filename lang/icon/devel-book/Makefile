# $OpenBSD: Makefile,v 1.6 2019/07/12 21:02:22 sthen Exp $

CATEGORIES=	books lang
COMMENT=	Icon language implemention reference book
MAINTAINER=	Marc Espie <espie@openbsd.org>

MASTER_SITES=	http://www.cs.arizona.edu/icon/ftp/doc/


# This documents version 9.3 of the language.
V=6
DISTNAME=	icon-book-$V

FLAVORS=two_sided
FLAVOR?=
.if ${FLAVOR} == "two_sided"
DISTFILES=	ib2up.pdf
FULLPKGNAME=	implementation-of-icon-two_sided-$V
.else
DISTFILES=	ib1up.pdf
FULLPKGNAME=	implementation-of-icon-$V
.endif

SUPDISTFILES=	ib1up.pdf ib2up.pdf

# Book says:
# 'This book originally was published by Princeton University Press.
# It is out of print and the rights have reverted to the authors, who hereby
# place it in the public domain'.
PERMIT_PACKAGE=	Yes

EXTRACT_ONLY=
NO_BUILD=Yes
PKG_ARCH=*

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/icon
	${INSTALL_DATA} ${FULLDISTDIR}/${DISTFILES} ${PREFIX}/share/doc/icon/implementation-of-icon${FLAVOR_EXT}.pdf

.include <bsd.port.mk>
