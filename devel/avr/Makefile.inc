# $OpenBSD: Makefile.inc,v 1.7 2011/07/11 19:15:03 jasper Exp $

CATEGORIES=	devel devel/avr

MAINTAINER=	Chris Kuethe <ckuethe@openbsd.org>

CONFIGURE_STYLE=gnu

CONFIGURE_ARGS+=	--target=avr		\
			--program-prefix=avr-	\
			--disable-shared	\
			--disable-nls
# XXX: Breaks with -Wbounded 
CONFIGURE)ARGS+=	--disable-werror
