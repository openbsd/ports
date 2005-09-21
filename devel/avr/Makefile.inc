# $OpenBSD: Makefile.inc,v 1.2 2005/09/21 16:21:25 martin Exp $

CATEGORIES=	devel

MAINTAINER=	Martin Reindl <martin@openbsd.org>	\
		Alexandre Anriot <aanriot@openbsd.org>

CONFIGURE_STYLE=gnu

CONFIGURE_ARGS=	--target=avr		\
		--program-prefix=avr-	\
		--disable-shared	\
		--disable-nls
