# $OpenBSD: Makefile,v 1.6 1999/06/23 04:27:29 marc Exp $

DISTNAME=       jed-B0.99-7
PKGNAME=        jed-0.99.7
CATEGORIES=	editors

MAINTAINER=     ports@OpenBSD.ORG

MASTER_SITES=   ftp://space.mit.edu/pub/davis/jed/v0.99/

BUILD_DEPENDS=	${PREFIX}/lib/libslang.a:${PORTSDIR}/devel/libslang

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
