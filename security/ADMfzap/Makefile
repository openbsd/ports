# $OpenBSD: Makefile,v 1.6 2002/03/24 07:30:43 jsyn Exp $

COMMENT=		"connect() and bind() wrapper to evade packet filtering"

DISTNAME=		ADMfzap
PKGNAME=        	ADMfzap-0.1
CATEGORIES=		security
NEED_VERSION=		1.515

MAINTAINER=     	Jason Peel <jsyn@openbsd.org>

PERMIT_PACKAGE_CDROM=	"no license"
PERMIT_PACKAGE_FTP=	"no license"
PERMIT_DISTFILES_CDROM=	"no license"
PERMIT_DISTFILES_FTP=	"no license"

MASTER_SITES=   	ftp://adm.freelsd.net/pub/ADM/ \
                	http://adm.freelsd.net/ADM/

MAKE_ENV+=      	LIB_PATH=`/bin/ls -1 /usr/lib/libc.so.* | tail -1`

ALL_TARGET=     	openbsd
NO_REGRESS=		Yes

post-build:
	sed "s%y0y0y0%${PREFIX}/lib/libfzap.so%g" \
		${FILESDIR}/ADMfzap > ${WRKSRC}/ADMfzap

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/fzap.so ${PREFIX}/lib/libfzap.so
	${INSTALL_SCRIPT} ${WRKSRC}/ADMfzap ${PREFIX}/bin

.include <bsd.port.mk>
