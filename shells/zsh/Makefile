# $OpenBSD: Makefile,v 1.93 2020/07/21 16:48:06 jasper Exp $

COMMENT=	Z shell, Bourne shell-compatible

V=		5.8
REVISION =	0
DISTNAME=	zsh-$V
CATEGORIES=	shells

MAINTAINER=	Pierre-Emmanuel Andre <pea@openbsd.org>

HOMEPAGE=	https://www.zsh.org/

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=zsh/} \
		https://www.zsh.org/pub/

EXTRACT_SUFX=	.tar.xz

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB=	c curses iconv m pcre

LIB_DEPENDS=	converters/libiconv \
		devel/pcre

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

CONFIGURE_ARGS=	--disable-zsh-mem \
		--disable-zsh-secure-free \
		--enable-maildir-support \
		--enable-function-subdirs \
		--enable-multibyte \
		--enable-pcre \
		--disable-gdbm \
		--with-tcsetpgrp

SUBST_VARS=	V

EXTFILES=	Calendar/calendar_add Example/cat Example/zless \
		Misc/checkmail Misc/run-help \
		Misc/run-help-ip \
		Misc/sticky-note Misc/zcalc \
		Misc/zed Misc/zkbd

pre-configure:
.for i in ${EXTFILES}
	sed -i -e "s,/bin/zsh,${TRUEPREFIX}/bin/zsh,g" \
		${WRKSRC}/Functions/${i}
.endfor

.include <bsd.port.mk>
