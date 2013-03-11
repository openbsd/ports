# $OpenBSD: Makefile,v 1.14 2013/03/11 11:41:24 espie Exp $

COMMENT=		connect() and bind() wrapper to evade packet filtering

# uses LD_PRELOAD
SHARED_ONLY=		Yes

DISTNAME=		ADMfzap
PKGNAME=        	ADMfzap-0.1
REVISION =		0
CATEGORIES=		security

MAINTAINER=     	Jason Peel <jsyn@openbsd.org>

PERMIT_PACKAGE_CDROM=	no license
PERMIT_PACKAGE_FTP=	no license
PERMIT_DISTFILES_FTP=	no license

MASTER_SITES=   	ftp://adm.freelsd.net/pub/ADM/ \
                	http://adm.freelsd.net/ADM/

MAKE_ENV+=      	LIB_PATH=`/bin/ls -1 /usr/lib/libc.so.* | tail -1`
MAKE_FLAGS=		CC="${CC}"
ALL_TARGET=     	openbsd

NO_TEST=		Yes

post-build:
	sed "s%y0y0y0%${PREFIX}/lib/libfzap.so%g" \
		${FILESDIR}/ADMfzap > ${WRKSRC}/ADMfzap

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/fzap.so ${PREFIX}/lib/libfzap.so
	${INSTALL_SCRIPT} ${WRKSRC}/ADMfzap ${PREFIX}/bin

.include <bsd.port.mk>
