# $OpenBSD: Makefile,v 1.28 2011/12/18 09:01:19 ajacoutot Exp $

COMMENT=	packing and unpacking of shell archives

DISTNAME=	sharutils-4.2.1

CATEGORIES=	archivers
MASTER_SITES=	${MASTER_SITE_GNU:=sharutils/}

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

REVISION =	0
WANTLIB=		c

CONFIGURE_STYLE= gnu dest
CONFIGURE_ARGS+= --program-prefix="g" --disable-uucode --disable-nls

post-patch:
	@touch ${WRKSRC}/po/sharutils.pot

# Regression tests apply to uudecode, which we don't build
NO_REGRESS=Yes

.include <bsd.port.mk>
