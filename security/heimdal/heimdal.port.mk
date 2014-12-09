# $OpenBSD: heimdal.port.mk,v 1.3 2014/12/09 15:55:10 ajacoutot Exp $

MODHEIMDAL_WANTLIB +=	heimdal/lib/asn1
MODHEIMDAL_WANTLIB +=	heimdal/lib/heimbase
MODHEIMDAL_WANTLIB +=	heimdal/lib/hx509
MODHEIMDAL_WANTLIB +=	heimdal/lib/krb5
MODHEIMDAL_WANTLIB +=	heimdal/lib/roken
MODHEIMDAL_WANTLIB +=	heimdal/lib/wind

MODHEIMDAL_LIB_DEPENDS=	security/heimdal,-libs

LIB_DEPENDS +=		${MODHEIMDAL_LIB_DEPENDS}
WANTLIB +=		${MODHEIMDAL_WANTLIB}

MODHEIMDAL_post-patch=	ln -sf ${LOCALBASE}/heimdal/bin/krb5-config ${WRKDIR}/bin/krb5-config
