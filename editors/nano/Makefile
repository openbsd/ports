# $OpenBSD: Makefile,v 1.61 2010/04/16 15:47:24 naddy Exp $

COMMENT=	Pico editor clone with enhancements

DISTNAME=	nano-2.2.4
CATEGORIES=	editors
HOMEPAGE=	http://www.nano-editor.org/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

MASTER_SITES=	http://www.nano-editor.org/dist/v2.2/ \
		${MASTER_SITE_GNU:=nano/}

# GPLv3
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
CONFIGURE_ARGS=--disable-utf8	# no wide character curses

post-install:
	perl -i -pe 's:SYSCONFDIR:${SYSCONFDIR}:g;' \
		-e  's:PREFIX:${TRUEPREFIX}:g;' \
		${PREFIX}/man/man1/nano.1 \
		${PREFIX}/man/man5/nanorc.5 \
		${PREFIX}/info/nano.info
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/nano
	${INSTALL_DATA} ${WRKBUILD}/doc/nanorc.sample \
		${PREFIX}/share/examples/nano

# Maintainer hint:
# Use  sed -e 's/\\</[[:<:]]/g' -e 's/\\>/[[:>:]]/g'  to regen the
# doc/syntax/*.nanorc patches.

.include <bsd.port.mk>
