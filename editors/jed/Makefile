# $OpenBSD: Makefile,v 1.11 2000/02/15 05:04:17 turan Exp $

DISTNAME=       jed-B0.99-10
PKGNAME=        jed-0.99.10
CATEGORIES=	editors
MASTER_SITES=   ftp://space.mit.edu/pub/davis/jed/v0.99/ \
		ftp://ftp.uni-stuttgart.de/pub/unix/misc/slang/jed/v0.99/

LIB_DEPENDS=	slang.13:${PORTSDIR}/devel/libslang

MAINTAINER=     ports@openbsd.org

LICENSE_TYPE=		GPL
PERMIT_PACKAGE_CDROM=	YES
PERMIT_PACKAGE_FTP=	YES
PERMIT_DISTFILES_CDROM=	YES
PERMIT_DISTFILES_FTP=	YES

GNU_CONFIGURE=  yes
CONFIGURE_ENV=	JED_ROOT=${PREFIX}/lib/jed

ALL_TARGET=     all getmail ${XJED}

# comment out the next line if you don't want the X version of JED.
XJED=		xjed

post-install:
	@jed -batch -n -l preparse.sl
	@install-info --section="Editors" \
		--entry="* JED: (jed). 		JED editor documentation." \
		${PREFIX}/info/jed.info ${PREFIX}/info/dir

.include <bsd.port.mk>
