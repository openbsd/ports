# $OpenBSD: Makefile,v 1.12 2019/07/12 20:51:06 sthen Exp $

COMMENT=		simple scripting language for web browsing

DISTNAME=		twill-0.9
REVISION=		6
CATEGORIES=		www

HOMEPAGE=		http://twill.idyll.org/
MASTER_SITES=		http://darcs.idyll.org/~t/projects/

# MIT
# Includes patched versions of:
# 	py-clientform (BSD-like or ZPL)
# 	py-mechanize (BSD-like or ZPL)
# 	py-parsing (BSD-like)
# 	py-beautifulsoup (PSF)
PERMIT_PACKAGE=	Yes

MODULES=		lang/python
MODPY_SETUPTOOLS=	Yes

TEST_DEPENDS=	www/py-quixote \
    			devel/py-nose \
			www/tidyp

# test-basic test requires user input for getpassword
TEST_IS_INTERACTIVE = Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/twill
	cd ${WRKSRC}/doc && \
		find . -type f -maxdepth 1 -name "*.txt" \
		\! \( -name "ANNOUNCE*" -o -name "ChangeLog" \) \
		-exec ${INSTALL_DATA} {} ${PREFIX}/share/doc/twill/{} \;
	rm -fr ${WRKSRC}/twill.egg-info

do-test:
	cd ${WRKSRC} && ${LOCALBASE}/bin/nosetests -v tests

.include <bsd.port.mk>
