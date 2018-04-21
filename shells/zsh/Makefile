# $OpenBSD: Makefile,v 1.88 2018/04/21 09:24:06 jasper Exp $

COMMENT=	Z shell, Bourne shell-compatible

V=		5.5.1
DISTNAME=	zsh-$V
CATEGORIES=	shells

MAINTAINER=	Pierre-Emmanuel Andre <pea@openbsd.org>

HOMEPAGE=	https://www.zsh.org/

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=zsh/}
MASTER_SITES+=	http://www.zsh.org/pub/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c curses iconv m pcre

LIB_DEPENDS=	converters/libiconv \
		devel/pcre

AUTOCONF_VERSION=2.69
CONFIGURE_STYLE=autoconf
CONFIGURE_ENV=  CPPFLAGS="-I${LOCALBASE}/include" \
                LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=	--enable-zsh-mem \
		--enable-zsh-secure-free \
		--enable-maildir-support \
		--with-tcsetpgrp \
		--enable-multibyte \
		--enable-pcre \
		--disable-gdbm

SUBST_VARS=	V

# required for regression tests
PORTHOME=	${WRKDIR}
TEST_FLAGS=	INSTALL_PROGRAM="install -c -s -m 555" \
		INSTALL_DATA="install -c -m 444" \
		INSTALL="install -c" \
		TMPPREFIX=${WRKBUILD}/tmp \
		TERM=xterm
EXTFILES=	Misc/checkmail Misc/run-help \
		Misc/sticky-note Misc/zcalc \
		Misc/zed Misc/zkbd \
		Calendar/calendar_add Example/cat Example/zless

pre-configure:
.for i in ${EXTFILES}
	sed -i -e "s,/bin/zsh,${TRUEPREFIX}/bin/zsh,g" \
		${WRKSRC}/Functions/${i}
.endfor
	@find ${WRKSRC} -name "*.orig" -delete

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/zsh/$V/scripts/

pre-test:
	rm -f ${WRKDIR}/bin/chgrp

.include <bsd.port.mk>
