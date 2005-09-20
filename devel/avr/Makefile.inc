# $OpenBSD: Makefile.inc,v 1.1.1.1 2005/09/20 15:22:42 aanriot Exp $

ONLY_FOR_ARCHS=	alpha i386 m68k sparc sparc64 powerpc vax

CATEGORIES=	devel

MAINTAINER=	Martin Reindl <martin@openbsd.org>	\
		Alexandre Anriot <aanriot@openbsd.org>

CONFIGURE_STYLE=gnu

CONFIGURE_ARGS=	--target=avr		\
		--program-prefix=avr-	\
		--disable-shared	\
		--disable-nls
