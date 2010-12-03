# $OpenBSD: Makefile,v 1.66 2010/12/03 16:45:07 naddy Exp $

COMMENT=	Pico editor clone with enhancements

DISTNAME=	nano-2.2.6
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
WANTLIB=	c ncursesw

SEPARATE_BUILD=	simple
CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${DEPBASE}/include" \
		LDFLAGS="-L${DEPBASE}/lib"

# only required to build HTML version of man pages
USE_GROFF =	Yes

post-install:
	perl -i -pe 's:SYSCONFDIR:${SYSCONFDIR}:g;' \
	    -e  's:PREFIX:${TRUEPREFIX}:g;' \
	    ${PREFIX}/man/man1/nano.1 \
	    ${PREFIX}/man/man5/nanorc.5 \
	    ${PREFIX}/info/nano.info
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/nano
	${INSTALL_DATA} ${WRKBUILD}/doc/nanorc.sample \
	    ${PREFIX}/share/examples/nano

# convenience target for maintainer to regen the syntax highlighting patches
nanorc-patches: extract
	cd ${WRKSRC}/doc/syntax; \
	    for i in *.nanorc; do \
		mv $$i $$i.orig; \
		sed -e 's/\\</[[:<:]]/g' -e 's/\\>/[[:>:]]/g' $$i.orig >$$i; \
		cmp $$i.orig $$i && mv $$i.orig $$i; \
	    done

.include <bsd.port.mk>
