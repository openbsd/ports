# $OpenBSD

COMMENT=	"event-based Python framework (core module)"

DISTNAME=	TwistedCore-2.4.0
PKGNAME=	py-twisted-core-2.4.0

HOMEPAGE=	http://twistedmatrix.com/trac/wiki/TwistedCore

MASTER_SITES=	http://tmrc.mit.edu/mirror/twisted/Twisted/2.4/

RUN_DEPENDS=	:py-zopeinterface-*:devel/py-zopeinterface \
		:py-openssl-*:security/py-openssl

post-install:
	${INSTALL_SCRIPT} ${FILESDIR}/twisted-regen-dropin.cache \
		${PREFIX}/sbin/
	perl -pi -e "s,%%MODPY_BIN%%,${MODPY_BIN},; \
	             s,%%MODPY_SITEPKG%%,${MODPY_SITEPKG}," \
		${PREFIX}/sbin/twisted-regen-dropin.cache

do-regress: fake
	env PYTHONPATH=${WRKINST}${MODPY_SITEPKG} \
		${WRKINST}${LOCALBASE}/bin/trial \
			--temp-directory=${WRKBUILD} \
			twisted

.include <bsd.port.mk>
