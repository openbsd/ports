# $OpenBSD: Makefile,v 1.1.1.1 2000/03/26 21:06:33 jeremy Exp $

DISTNAME=	nemesis-1.0
CATEGORIES=	net
NEED_VERSION=	1.230
MASTER_SITES=	http://www.packetfactory.net/Projects/nemesis/ \
		http://celerity.bartoli.org/projects/ \
		http://www.nol.net/~halogen/

MAINTAINER=	halogen@nol.net
FAKE=		Yes
HAS_CONFIGURE=	Yes
CONFIGURE_ARGS= --with-net-lib=${LOCALBASE}/lib \
		--with-net-inc=${LOCALBASE}/include

BUILD_DEPENDS=	${PREFIX}/lib/libnet.a::net/libnet

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

# pretty much stolen from espie@, he used this in zsh-devel
post-configure:
	@perl -pi.bak -e 's,= ${PREFIX},= \$${DESTDIR}${PREFIX},' ${WRKBUILD}/Makefile

.include <bsd.port.mk>
