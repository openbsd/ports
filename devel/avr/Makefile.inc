# $OpenBSD: Makefile.inc,v 1.4 2009/07/12 20:55:19 ckuethe Exp $

CATEGORIES=	devel

MAINTAINER=	Martin Reindl <martin@openbsd.org>	\
		Alexandre Anriot <aanriot@openbsd.org>	\
		Chris Kuethe <ckuethe@openbsd.org>

CONFIGURE_STYLE=gnu

CONFIGURE_ARGS+=	--target=avr		\
			--program-prefix=avr-	\
			--disable-shared	\
			--disable-nls
