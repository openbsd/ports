# Makefile for:		ADMfzap
# Version required:	0.1
# Date created:		14 Mar 1999
# Whom:			dugsong@monkey.org
#
# $OpenBSD: Makefile,v 1.2 2000/06/16 23:06:10 espie Exp $

PKGNAME=	ADMfzap-0.1

CATEGORIES=	security

MAINTAINER=	dugsong@monkey.org

DISTNAME=	ADMfzap

MASTER_SITES=	http://ADM.isp.at/ADM/ \
		ftp://ADM.isp.at/ADM/

MAKE_ENV+=	LIB_PATH=`/bin/ls -1 /usr/lib/libc.so.* | tail -1`

ALL_TARGET=	openbsd

# these should really just be defaults.
PERMIT_PACKAGE_CDROM=	yes
PERMIT_PACKAGE_FTP=	yes
PERMIT_DISTFILES_CDROM=	yes
PERMIT_DISTFILES_FTP=	yes

post-build:
		sed "s%y0y0y0%${PREFIX}/lib/libfzap.so%g" \
		    ${FILESDIR}/ADMfzap > ${WRKSRC}/ADMfzap

do-install:
		${INSTALL_PROGRAM} ${WRKSRC}/fzap.so ${PREFIX}/lib/libfzap.so
		${INSTALL_SCRIPT} ${WRKSRC}/ADMfzap ${PREFIX}/bin

.include <bsd.port.mk>
