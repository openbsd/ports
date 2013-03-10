# $OpenBSD: Makefile,v 1.29 2013/03/10 22:28:04 espie Exp $

COMMENT=	packing and unpacking of shell archives

DISTNAME=	sharutils-4.2.1

CATEGORIES=	archivers
MASTER_SITES=	${MASTER_SITE_GNU:=sharutils/}

# GPL
PERMIT_PACKAGE_CDROM=	Yes

REVISION =	0
WANTLIB=		c

CONFIGURE_STYLE= gnu dest
CONFIGURE_ARGS+= --program-prefix="g" --disable-uucode --disable-nls

post-patch:
	@touch ${WRKSRC}/po/sharutils.pot

# Regression tests apply to uudecode, which we don't build
NO_TEST=Yes

.include <bsd.port.mk>
