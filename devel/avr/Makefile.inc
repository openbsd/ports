# $OpenBSD: Makefile.inc,v 1.8 2011/09/16 10:24:46 jasper Exp $

CATEGORIES=	devel devel/avr

MAINTAINER=	Chris Kuethe <ckuethe@openbsd.org>

CONFIGURE_STYLE=gnu

CONFIGURE_ARGS+=	--target=avr		\
			--program-prefix=avr-	\
			--disable-shared	\
			--disable-nls
# XXX: Breaks with -Wbounded 
CONFIGURE_ARGS+=	--disable-werror
