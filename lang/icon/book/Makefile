# $OpenBSD: Makefile,v 1.8 2019/07/12 21:02:22 sthen Exp $

CATEGORIES=	books lang
COMMENT=	Icon programming language reference book
MAINTAINER=	Marc Espie <espie@openbsd.org>

MASTER_SITES=	http://www.cs.arizona.edu/icon/ftp/doc/


# This documents version 9.3 of the language.
V=9.3
DISTNAME=	icon-book-$V

FLAVORS=two_sided
FLAVOR?=
.if ${FLAVOR} == "two_sided"
DISTFILES=	lb2up.pdf
FULLPKGNAME=	icon-book-two_sided-$V
REVISION =	0
.else
DISTFILES=	lb1up.pdf
FULLPKGNAME=	icon-book-$V
.endif

SUPDISTFILES=	lb1up.pdf lb2up.pdf

# Book says:
# 'This book originally was published by Peer-to-Peer Communications.
# It is out of print and the rights have reverted to the authors, who hereby
# place it in the public domain'.
PERMIT_PACKAGE=	Yes

EXTRACT_ONLY=
NO_BUILD=Yes
PKG_ARCH=*

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/icon
	${INSTALL_DATA} ${FULLDISTDIR}/${DISTFILES} ${PREFIX}/share/doc/icon/icon-book${FLAVOR_EXT}.pdf

.include <bsd.port.mk>
