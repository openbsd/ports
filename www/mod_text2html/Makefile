# $OpenBSD: Makefile,v 1.6 2007/06/30 15:32:30 simon Exp $

COMMENT=	"Apache module designed to replace text/plain handler"

DISTNAME=	mod_text2html-1.0
PKGNAME=	${DISTNAME}p2
CATEGORIES=	www

HOMEPAGE=	http://software.tangent.org/projects.pl?view=mod_text2html
MASTER_SITES=	http://software.tangent.org/download/ \
		ftp://ftp.tangent.org/pub/apache/
MODULES+=	apache-module

# Apache Software License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODAPACHE_NAME=	text2html

NO_REGRESS=	Yes

APXS=		/usr/sbin/apxs

do-build:
	cd ${WRKBUILD} && \
		${APXS} -c -o mod_text2html.so mod_text2html.c
	@${MODAPACHE_CREATE_ENABLE_SCRIPT}

do-install:
	${MODAPACHE_INSTALL}

.include <bsd.port.mk>
