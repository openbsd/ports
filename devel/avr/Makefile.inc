# $OpenBSD: Makefile.inc,v 1.6 2010/09/12 19:02:53 jasper Exp $

CATEGORIES=	devel devel/avr

MAINTAINER=	Chris Kuethe <ckuethe@openbsd.org>

CONFIGURE_STYLE=gnu

CONFIGURE_ARGS+=	--target=avr		\
			--program-prefix=avr-	\
			--disable-shared	\
			--disable-nls
