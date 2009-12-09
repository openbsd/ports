# $OpenBSD: Makefile.inc,v 1.5 2009/12/09 16:34:06 ckuethe Exp $

CATEGORIES=	devel

MAINTAINER=	Chris Kuethe <ckuethe@openbsd.org>

CONFIGURE_STYLE=gnu

CONFIGURE_ARGS+=	--target=avr		\
			--program-prefix=avr-	\
			--disable-shared	\
			--disable-nls
