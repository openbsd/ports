# $OpenBSD: Makefile,v 1.89 2018/09/17 10:50:26 rsadowski Exp $

COMMENT=	Z shell, Bourne shell-compatible

V=		5.6.2
DISTNAME=	zsh-$V
CATEGORIES=	shells

MAINTAINER=	Pierre-Emmanuel Andre <pea@openbsd.org>

HOMEPAGE=	https://www.zsh.org/

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=zsh/} \
		https://www.zsh.org/pub/

EXTRACT_SUFX=	.tar.xz

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c curses iconv m pcre

LIB_DEPENDS=	converters/libiconv \
		devel/pcre

AUTOCONF_VERSION=2.69
CONFIGURE_STYLE=autoconf
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

CONFIGURE_ARGS=	--enable-zsh-mem \
		--enable-zsh-secure-free \
		--enable-maildir-support \
		--enable-function-subdirs \
		--enable-multibyte \
		--enable-pcre \
		--disable-gdbm \
		--with-tcsetpgrp

SUBST_VARS=	V

# required for regression tests
PORTHOME=	${WRKDIR}
TEST_FLAGS=	INSTALL_PROGRAM="install -c -s -m 555" \
		INSTALL_DATA="install -c -m 444" \
		INSTALL="install -c" \
		TMPPREFIX=${WRKBUILD}/tmp \
		TERM=xterm

EXTFILES=	Functions/Misc/checkmail Functions/Misc/run-help \
		Functions/Misc/run-help-ip Functions/Misc/sticky-note \
		Functions/Misc/zcalc Functions/Misc/zed Functions/Misc/zkbd \
		Functions/Calendar/calendar_add Functions/Example/cat \
		Functions/Example/zless Test/ztst.zsh Test/runtests.zsh \
		Util/reporter Util/check-tmux-state Doc/zsh.texi

pre-configure:
.for i in ${EXTFILES}
	sed -i -e "s,/bin/zsh,${TRUEPREFIX}/bin/zsh,g" \
		${WRKSRC}/${i}
.endfor

.include <bsd.port.mk>
