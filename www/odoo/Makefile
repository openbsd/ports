PORTROACH=		ignore:1

COMMENT=		all-in-one management software

MV=			16.0
SV=			20230929
V=			${MV}.${SV}

DISTNAME=		odoo_${V}

PKGNAME=		${DISTNAME:S/_/-/}
CATEGORIES=		www
REVISION=		1

MAINTAINER=		Robert Nagy <robert@openbsd.org>

HOMEPAGE=		https://www.odoo.com

SITES=			https://nightly.odoocdn.com/${MV}/nightly/src/

MODULES=		lang/python
MODPY_PYBUILD =		setuptools

WRKDIST=		${WRKDIR}/odoo-${MV}.post${SV}

SUBST_VARS+=		MV SV

RUN_DEPENDS=		converters/py-html2text \
			converters/py-num2words \
			databases/postgresql,-main \
			databases/py-psycopg2 \
			devel/py-babel \
			devel/py-dateutil \
			devel/py-decorator \
			devel/py-gevent \
			devel/py-mock \
			devel/py-stdnum \
			devel/py-xlsxwriter \
			graphics/py-Pillow \
			graphics/py-dot \
			graphics/py-qrcode \
			lang/node \
			print/py-reportlab \
			security/py-openssl \
			security/py-passlib \
			sysutils/py-psutil \
			telephony/py-phonenumbers \
			textproc/py-PyPDF2 \
			textproc/py-chardet \
			textproc/py-docutils \
			textproc/py-lxml \
			textproc/py-ofxparse \
			textproc/py-polib \
			textproc/py-vobject \
			textproc/py-xlwt \
			textproc/py-yaml \
			textproc/wkhtmltopdf \
			www/py-jinja2 \
			www/py-requests \
			www/py-requests-futures \
			www/py-requests-toolbelt \
			www/py-werkzeug \
			www/sassc

# LGPL
PERMIT_PACKAGE =	Yes

PKG_ARCH=		*

.include <bsd.port.mk>
