# $OpenBSD: Makefile.inc,v 1.10 2013/10/10 02:08:21 brad Exp $

CATEGORIES=	devel

CONFIGURE_STYLE=gnu

CONFIGURE_ARGS+=	--target=avr		\
			--program-prefix=avr-	\
			--disable-shared	\
			--disable-nls
# XXX: Breaks with -Wbounded 
CONFIGURE_ARGS+=	--disable-werror
