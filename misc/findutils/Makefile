# $OpenBSD: Makefile,v 1.26 2014/11/27 13:14:00 dcoppa Exp $

COMMENT=		finds and then operates on files

# XXX alpha-test version for now; switch back to stable when there's
# a version which works with 64-bit time_t/ino_t.
DISTNAME=		findutils-4.5.14
CATEGORIES=		misc

HOMEPAGE=		https://www.gnu.org/software/findutils/

# GPLv3+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c m

#MASTER_SITES=		${MASTER_SITE_GNU:=findutils/}
MASTER_SITES=		http://alpha.gnu.org/gnu/findutils/

MODULES=		devel/gettext

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--program-prefix="g"
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

LOCALSTATEDIR=		${BASELOCALSTATEDIR}/db
USE_GROFF =		Yes

.include <bsd.port.mk>
