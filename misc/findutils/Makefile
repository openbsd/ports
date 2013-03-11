# $OpenBSD: Makefile,v 1.23 2013/03/11 11:23:57 espie Exp $

COMMENT=		finds and then operates on files

DISTNAME=		findutils-4.4.2
CATEGORIES=		misc
REVISION=		0

HOMEPAGE=		http://www.gnu.org/software/findutils/

# GPLv3+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c m

MASTER_SITES=		${MASTER_SITE_GNU:=findutils/}

MODULES=		devel/gettext

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--program-prefix="g"
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

LOCALSTATEDIR=		${BASELOCALSTATEDIR}/db
USE_GROFF =		Yes

.include <bsd.port.mk>
