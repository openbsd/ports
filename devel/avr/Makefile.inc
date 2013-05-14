# $OpenBSD: Makefile.inc,v 1.9 2013/05/14 07:15:18 jasper Exp $

CATEGORIES=	devel

MAINTAINER=	Chris Kuethe <ckuethe@openbsd.org>

CONFIGURE_STYLE=gnu

CONFIGURE_ARGS+=	--target=avr		\
			--program-prefix=avr-	\
			--disable-shared	\
			--disable-nls
# XXX: Breaks with -Wbounded 
CONFIGURE_ARGS+=	--disable-werror
