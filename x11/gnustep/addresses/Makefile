COMMENT=	GNUstep address book

DISTNAME=	Addresses-0.4.8
REVISION =	15

SHARED_LIBS+=	Addresses 0.1	# .0.1
SHARED_LIBS+=	AddressView 0.1	# .0.1

CATEGORIES=	mail

HOMEPAGE=	http://gap.nongnu.org/addresses/index.html

WANTLIB =	Inspector
WANTLIB += ${COMPILER_LIBCXX}

SITES=		${SITE_SAVANNAH:=gap/}

MODULES =	x11/gnustep
LIB_DEPENDS +=	x11/gnustep/gworkspace

MAKE_FLAGS+=	Addresses_VERSION=${LIBAddresses_VERSION} \
		Addresses_INTERFACE_VERSION=${LIBAddresses_VERSION} \
		AddressView_VERSION=${LIBAddressView_VERSION} \
		AddressView_INTERFACE_VERSION=${LIBAddressView_VERSION} \
		disable-ldapaddressbook=yes

ALL_TARGET =	all goodies
INSTALL_TARGET = install goodies-install

.include <bsd.port.mk>
