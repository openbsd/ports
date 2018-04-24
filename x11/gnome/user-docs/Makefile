# $OpenBSD: Makefile,v 1.56 2018/04/24 15:29:23 ajacoutot Exp $

COMMENT=		general user documentation for GNOME

GNOME_PROJECT=		gnome-user-docs
GNOME_VERSION=		3.28.1

MASTER_SITES0=		https://gitlab.gnome.org/GNOME/gnome-user-docs/commit/
PATCH_DIST_STRIP=	-p1
HEAD_PATCHES=		86e035e2d51833d32661cb863ffaae1b4cbbf515 \
			bff31a845f92d90212735b88410a229a0fb3deab \
			9c704a9e58f2befcd8cf0be6e627756ac63a6dbf \
			66b6fceb70a64698da2da81c5607711234c3ee80 \
			054558ad53022a2bd0d893c67dbbbe8f1ddd4fb9 \
			a1949b71840a518289bf8e78d5101f9badf49aad \
			4dea4a11a9d39f4e81a753a77ae338d489e85755 \
			b2b591e595e49a91b1cd35405452ee8c149a798d

.for p in ${HEAD_PATCHES}
PATCHFILES +=		$p.patch:0
.endfor

# CC Attribution 3.0
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		x11/gnome

MODGNOME_TOOLS=		yelp
PKG_ARCH=		*

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
