COMMENT=	newLISP is a LISP like, general purpose scripting language

V=		10.7.5
DISTNAME=	newlisp-$V
CATEGORIES=	lang
HOMEPAGE=	http://newlisp.org/

# GPLv3+
PERMIT_PACKAGE=	Yes

WANTLIB += c m ncurses readline

MASTER_SITES=		http://newlisp.org/downloads/
EXTRACT_SUFX=		.tgz

RUN_DEPENDS=		devel/xdg-utils

SEPARATE_BUILD=		Yes
CONFIGURE_STYLE=	simple
CONFIGURE_SCRIPT=	configure-alt
CONFIGURE_ARGS +=	--enable-readline

TEST_TARGET=		check

WRKBUILD=		${WRKSRC}
SUBST_VARS=		V

.include <bsd.port.mk>
