# $OpenBSD: Makefile,v 1.53 2007/04/27 14:49:44 naddy Exp $

COMMENT=	"Pico editor clone with enhancements"

DISTNAME=	nano-2.0.6
CATEGORIES=	editors
HOMEPAGE=	http://www.nano-editor.org/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

MASTER_SITES=	http://www.nano-editor.org/dist/v2.0/ \
		http://www.ewtoo.org/~astyanax/nano/dist/v2.0/

# GPL
PERMIT_PACKAGE_CDROM=	Yes 
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM=	Yes 
PERMIT_DISTFILES_FTP=	Yes 

MODULES=	devel/gettext
WANTLIB=	c ncurses

SEPARATE_BUILD=	simple
CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${DEPBASE}/include" \
		LDFLAGS="-L${DEPBASE}/lib"
CONFIGURE_ARGS=	--enable-all
CONFIGURE_ARGS+=--disable-utf8	# no wide character curses

post-install:
	perl -i -pe 's:SYSCONFDIR:${SYSCONFDIR}:g;' \
		-e  's:PREFIX:${TRUEPREFIX}:g;' \
		${PREFIX}/man/man1/nano.1 \
		${PREFIX}/man/man5/nanorc.5 \
		${PREFIX}/info/nano.info
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/nano
	${INSTALL_DATA} ${WRKBUILD}/doc/nanorc.sample \
		${PREFIX}/share/examples/nano

.include <bsd.port.mk>
