# $OpenBSD: Makefile,v 1.2 2013/03/16 08:25:55 landry Exp $

COMMENT=		GNU patch

VERSION=		2.7
DISTNAME=		patch-${VERSION}
PKGNAME=		gpatch-${VERSION}
CATEGORIES=		devel

HOMEPAGE=		http://www.gnu.org/software/patch/

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

pre-regress:
	@ln -fs ${LOCALBASE}/bin/gdiff ${WRKDIR}/bin/diff

post-install:
	@rm ${PREFIX}/lib/charset.alias

.include <bsd.port.mk>
