# $OpenBSD: Makefile,v 1.8 1999/10/01 23:48:28 brad Exp $

DISTNAME=       jed-B0.99-9
PKGNAME=        jed-0.99.9
CATEGORIES=	editors
MASTER_SITES=   ftp://space.mit.edu/pub/davis/jed/v0.99/

LIB_DEPENDS=	slang.13:${PORTSDIR}/devel/libslang

MAINTAINER=     ports@openbsd.org

GNU_CONFIGURE=  yes
CONFIGURE_ENV=	JED_ROOT=${PREFIX}/lib/jed

# comment out the next line if you don't want the X version of JED.
XJED=		xjed

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
