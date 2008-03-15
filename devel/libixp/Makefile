# $OpenBSD: Makefile,v 1.2 2008/03/15 13:24:10 mcbride Exp $

COMMENT=	stand-alone client/server 9P library

DISTNAME=	libixp-0.4
CATEGORIES=	devel

HOMEPAGE=	http://www.suckless.org

# MIT/X, except intmap.c under Plan 9 License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}/download/

WANTLIB=	c m

NO_REGRESS=	Yes

FAKE_FLAGS=	DESTDIR=""

.include <bsd.port.mk>
