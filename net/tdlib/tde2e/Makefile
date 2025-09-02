COMMENT =		private headers and library for net/tdesktop
PKGNAME =		${DISTNAME:S/lib/e2e/}

# tde2e is separate static library, but upstream keeps all in one repository.
CONFIGURE_ARGS =	-DTD_E2E_ONLY=ON

# @comment common files and ship only extra ones to avoid conflict handling.
RUN_DEPENDS =		net/tdlib/tdlib>=1.8.49p0

# Nothing else should use this.
PERMIT_PACKAGE =	No

CONFIGURE_ARGS +=	-DCCACHE_FOUND=OFF \
			-DPHP_FOUND=OFF

.include <bsd.port.mk>
