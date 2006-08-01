# $OpenBSD: Makefile,v 1.46 2006/08/01 23:39:08 espie Exp $

COMMENT=	"small, easy to use editor"

DISTNAME=	nano-1.2.5
CATEGORIES=	editors
HOMEPAGE=	http://www.nano-editor.org/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

MASTER_SITES=	http://www.nano-editor.org/dist/v1.2/ \
		http://www.ewtoo.org/~astyanax/nano/dist/v1.2/

# GPL
PERMIT_PACKAGE_CDROM=	Yes 
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM=	Yes 
PERMIT_DISTFILES_FTP=	Yes 
WANTLIB=		c ncurses

FLAVORS=	slang
FLAVOR?=

MODULES=	devel/gettext

FAKE=		lib
CONFIGURE_STYLE=autoconf
AUTOCONF_VERSION=2.59
CONFIGURE_ENV=	CPPFLAGS="-I${DEPBASE}/include" \
		LDFLAGS="-L${DEPBASE}/lib"
CONFIGURE_ARGS=	--enable-all

.if ${FLAVOR:L:Mslang}
LIB_DEPENDS+=	slang.>=14::devel/libslang
CONFIGURE_ARGS+=--with-slang="${DEPBASE}"
WANTLIB+=	m
.endif

post-install:
	perl -i -pe 's:\$$SYSCONFDIR:${SYSCONFDIR}:g' \
		${PREFIX}/man/man5/nanorc.5 \
		${PREFIX}/man/man1/nano.1 \
		${PREFIX}/info/nano.info
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/nano
	${INSTALL_DATA} ${WRKSRC}/nanorc.sample ${PREFIX}/share/examples/nano

.include <bsd.port.mk>
