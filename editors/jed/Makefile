# $OpenBSD: Makefile,v 1.7 1999/07/15 01:47:28 brad Exp $

DISTNAME=       jed-B0.99-8
PKGNAME=        jed-0.99.8
CATEGORIES=	editors
MASTER_SITES=   ftp://space.mit.edu/pub/davis/jed/v0.99/

MAINTAINER=     ports@OpenBSD.ORG

LIB_DEPENDS=	slang.13:${PORTSDIR}/devel/libslang

# comment out the next line if you don't want the X version of JED.
XJED=		xjed

GNU_CONFIGURE=  yes
CONFIGURE_ENV=	JED_ROOT=${PREFIX}/lib/jed

ALL_TARGET=     all getmail ${XJED}

post-install:
	@jed -batch -n -l preparse.sl
	@${MV} ${PREFIX}/lib/jed/doc ${PREFIX}/share/doc/jed
	@${MV} ${PREFIX}/lib/jed/info/jed.* ${PREFIX}/info
	@install-info --section="Editors" \
		--entry="* JED: (jed). 		JED editor documentation." \
		${PREFIX}/info/jed.info ${PREFIX}/info/dir
	@${RM} -rf ${PREFIX}/lib/jed/info

.include <bsd.port.mk>
