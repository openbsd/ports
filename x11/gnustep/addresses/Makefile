# $OpenBSD: Makefile,v 1.1.1.1 2007/07/25 06:18:27 ajacoutot Exp $

COMMENT=	GNUstep address book

DISTNAME=	Addresses-0.4.7
PKGNAME=	${DISTNAME:L}
SHARED_LIBS+=	Addresses 0.1	# .0.1
SHARED_LIBS+=	AddressView 0.1	# .0.1
CATEGORIES=	mail

HOMEPAGE=	http://gap.nongnu.org/addresses/index.html

WANTLIB=	c m objc pthread

MASTER_SITES=	http://savannah.nongnu.org/download/gap/

WRKDIST=	${WRKDIR}/Addresses

MODULES=	x11/gnustep
LIB_DEPENDS=	gnustep-base.>=1::x11/gnustep/base \
		gnustep-gui::x11/gnustep/gui
RUN_DEPENDS=	:gnustep-back-*:x11/gnustep/back

NO_REGRESS=	Yes

MAKE_ENV+=	Addresses_VERSION=${LIBAddresses_VERSION} \
		Addresses_INTERFACE_VERSION=${LIBAddresses_VERSION} \
		AddressView_VERSION=${LIBAddressView_VERSION} \
		AddressView_INTERFACE_VERSION=${LIBAddressView_VERSION}

pre-configure:
	@perl -pi -e 's,!!LIBAddresses_VERSION!!,${LIBAddresses_VERSION},g;' \
		-e 's,!!LIBAddressView_VERSION!!,${LIBAddressView_VERSION},g' \
		${WRKSRC}/AddressManager/GNUmakefile

post-install:
	@cd ${WRKINST}${TRUEPREFIX}/include && \
		ln -sf ./../lib/GNUstep/Frameworks/Addresses.framework/Headers AddressBook

.include <bsd.port.mk>
