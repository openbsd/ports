# $OpenBSD: Makefile.inc,v 1.3 2005/12/09 16:01:00 aanriot Exp $

CATEGORIES=	devel

MAINTAINER=	Martin Reindl <martin@openbsd.org>	\
		Alexandre Anriot <aanriot@openbsd.org>

CONFIGURE_STYLE=gnu

CONFIGURE_ARGS+=	--target=avr		\
			--program-prefix=avr-	\
			--disable-shared	\
			--disable-nls
