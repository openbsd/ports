# $OpenBSD: Makefile,v 1.1.1.1 2008/03/15 12:38:53 mcbride Exp $

COMMENT=	http://www.suckless.org/download/libixp-0.4.tar.gz

DISTNAME=	libixp-0.4
PKGNAME=	${DISTNAME}
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
