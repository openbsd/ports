# $OpenBSD: Makefile,v 1.24 2019/07/12 20:44:08 sthen Exp $

COMMENT=	multilanguage implementation of ctags

DISTNAME=	ctags-5.8
REVISION=	4
PKGNAME=	e${DISTNAME}
CATEGORIES=	devel
HOMEPAGE=	http://ctags.sourceforge.net/

# GPLv2
PERMIT_PACKAGE=	Yes
WANTLIB=		c

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=ctags/}

CONFIGURE_STYLE=gnu

DOCS=		FAQ NEWS README EXTENDING.html

# Application software must not redefine macros in the
# implementation namespace.  For example, redefining __unused__
# blows up in our <ctype.h>.
post-extract:
	find ${WRKSRC} -type f -name '*.[ch]' -exec sed -i \
	's/__unused__/ect_unused/g; s/__printf__/ect_printf/g' {} +

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/ctags ${PREFIX}/bin/ectags
	${INSTALL_MAN} ${WRKSRC}/ctags.1 ${PREFIX}/man/man1/ectags.1
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ectags
	@cd ${WRKSRC}; ${INSTALL_DATA} ${DOCS} ${PREFIX}/share/doc/ectags

NO_TEST=	Yes
SEPARATE_BUILD= Yes

.include <bsd.port.mk>
