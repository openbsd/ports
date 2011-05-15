# $OpenBSD: Makefile,v 1.11 2011/05/15 13:03:26 sebastia Exp $

COMMENT=	GNUstep address book

DISTNAME=	Addresses-0.4.7
REVISION=	6

SHARED_LIBS+=	Addresses 0.1	# .0.1
SHARED_LIBS+=	AddressView 0.1	# .0.1

CATEGORIES=	mail

HOMEPAGE=	http://gap.nongnu.org/addresses/index.html

WANTLIB=	c m pthread

MASTER_SITES=	${MASTER_SITE_SAVANNAH:=gap/}

WRKDIST=	${WRKDIR}/Addresses

MODULES=	x11/gnustep

MAKE_ENV+=	Addresses_VERSION=${LIBAddresses_VERSION} \
		Addresses_INTERFACE_VERSION=${LIBAddresses_VERSION} \
		AddressView_VERSION=${LIBAddressView_VERSION} \
		AddressView_INTERFACE_VERSION=${LIBAddressView_VERSION}

post-install:
	@cd ${WRKINST}${TRUEPREFIX}/include && \
		ln -sf ./../lib/GNUstep/Frameworks/Addresses.framework/Headers AddressBook

.include <bsd.port.mk>
