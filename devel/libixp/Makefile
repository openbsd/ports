# $OpenBSD: Makefile,v 1.4 2009/03/11 19:41:03 martin Exp $

COMMENT=	stand-alone client/server 9P library

DISTNAME=	libixp-0.4
PKGNAME=	${DISTNAME}p1
CATEGORIES=	devel

HOMEPAGE=	http://www.suckless.org

# MIT/X, except intmap.c under Plan 9 License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}/download/

WANTLIB=	c

NO_REGRESS=	Yes

pre-configure:
	@perl -pi -e 's,!!CFLAGS!!,${CFLAGS},g;' \
		-e 's,!!CC!!,${CC},g' ${WRKSRC}/config.mk

.include <bsd.port.mk>
