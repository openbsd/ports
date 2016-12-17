# $OpenBSD: heimdal.port.mk,v 1.4 2016/12/17 14:58:31 ajacoutot Exp $

MODHEIMDAL_WANTLIB +=	com_err pthread util
MODHEIMDAL_WANTLIB +=	heimdal/lib/asn1
MODHEIMDAL_WANTLIB +=	heimdal/lib/hcrypto
MODHEIMDAL_WANTLIB +=	heimdal/lib/heimbase
MODHEIMDAL_WANTLIB +=	heimdal/lib/hx509
MODHEIMDAL_WANTLIB +=	heimdal/lib/krb5
MODHEIMDAL_WANTLIB +=	heimdal/lib/roken
MODHEIMDAL_WANTLIB +=	heimdal/lib/wind
WANTLIB +=		${MODHEIMDAL_WANTLIB}

MODHEIMDAL_LIB_DEPENDS=	security/heimdal,-libs
LIB_DEPENDS +=		${MODHEIMDAL_LIB_DEPENDS}

MODHEIMDAL_post-patch=	ln -sf ${LOCALBASE}/heimdal/bin/krb5-config ${WRKDIR}/bin/krb5-config
