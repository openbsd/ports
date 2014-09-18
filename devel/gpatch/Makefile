# $OpenBSD: Makefile,v 1.5 2014/09/18 07:14:12 sthen Exp $

COMMENT=		GNU patch

VERSION=		2.7.1
DISTNAME=		patch-${VERSION}
PKGNAME=		gpatch-${VERSION}
CATEGORIES=		devel

HOMEPAGE=		https://www.gnu.org/software/patch/

# GPLv3+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c

MASTER_SITES=		${MASTER_SITE_GNU:=patch/}

USE_GMAKE=		Yes
USE_GROFF=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--program-prefix=g

TEST_DEPENDS=		shells/bash \
			textproc/gdiff
TEST_FLAGS=		SHELL=${LOCALBASE}/bin/bash

pre-test:
	@ln -fs ${LOCALBASE}/bin/gdiff ${WRKDIR}/bin/diff

post-install:
	@rm ${PREFIX}/lib/charset.alias

.include <bsd.port.mk>
