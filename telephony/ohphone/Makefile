# $OpenBSD: Makefile,v 1.7 2009/01/17 14:14:14 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	H.323 IP telephony endpoint

DISTNAME=	ohphone-1.4.5
PKGNAME=	${DISTNAME}p2v0
CATEGORIES=	telephony net

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# MPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://www.bsdfrog.org/OpenBSD/distfiles/

WANTLIB=	SDL X11 Xext avutil c crypto expat lber ldap ldap_r m \
		pt pthread sasl2 ssl stdc++

LIB_DEPENDS=	h323.>=2::net/openh323

USE_X11=	Yes
USE_GMAKE=	Yes
ALL_TARGET=	optshared
NO_REGRESS=	Yes

MAKE_ENV+=	CC=${CC} CPLUS=${CXX} \
		OPENH323DIR=${LOCALBASE}/share/openh323/ \
		PWLIBDIR=`ptlib-config --pwlibdir` \
		SYSLIBDIR=`ptlib-config --libdir` \
		STDCCFLAGS="-I${LOCALBASE}/include/openh323"

post-install:
	${INSTALL_MAN_DIR} ${PREFIX}/man/man1/
	${INSTALL_MAN} ${WRKSRC}/ohphone.1 ${PREFIX}/man/man1/
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ohphone
.for i in ReadMe.txt check_listen.awk regtest stresstest
	${INSTALL_DATA} ${WRKSRC}/${i} ${PREFIX}/share/doc/ohphone
.endfor

.include <bsd.port.mk>
