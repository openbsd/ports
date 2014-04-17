# $OpenBSD: Makefile,v 1.70 2014/04/17 12:12:20 jasper Exp $

COMMENT=	Z shell, Bourne shell-compatible

V=		5.0.5
DISTNAME=	zsh-$V
CATEGORIES=	shells

MAINTAINER=	Pierre-Emmanuel Andre <pea@openbsd.org>

HOMEPAGE=	http://www.zsh.org/

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=zsh/}

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c m pcre ncursesw

MODULES=	converters/libiconv

LIB_DEPENDS=	devel/pcre

AUTOCONF_VERSION=2.68
CONFIGURE_STYLE=autoconf
CONFIGURE_ENV=  CPPFLAGS="-I${LOCALBASE}/include" \
                LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=	${CONFIGURE_SHARED:S/shared/dynamic/} \
		--enable-zsh-mem \
		--enable-zsh-secure-free \
		--enable-maildir-support \
		--with-tcsetpgrp \
		--enable-multibyte \
		--enable-pcre \
		--disable-gdbm
USE_GROFF =	Yes

SUBST_VARS=	V

# required for regression tests
PORTHOME=	${WRKDIR}
TEST_FLAGS=	INSTALL_PROGRAM="install -c -s -m 555" \
		INSTALL_DATA="install -c -m 444" \
		INSTALL="install -c" \
		TMPPREFIX=${WRKBUILD}/tmp \
		TERM=xterm
EXTFILES=	Misc/checkmail Misc/run-help Misc/sticky-note Misc/zcalc Misc/zed Misc/zkbd \
		Calendar/calendar_add Example/cat Example/zless

pre-configure:
.for i in ${EXTFILES}
	perl -pi -e "s,/bin/zsh,${TRUEPREFIX}/bin/zsh,g" ${WRKSRC}/Functions/${i}
.endfor
	@find ${WRKSRC} -name "*.orig" -exec rm -f {} \;

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/zsh/$V/scripts/

.include <bsd.port.mk>
