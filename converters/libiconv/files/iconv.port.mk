# $OpenBSD: iconv.port.mk,v 1.3 2001/10/28 06:34:24 brad Exp $

# The RUN_DEPENDS entry is to ensure libiconv is installed. This is
# necessary so that we have charset.alias installed on static archs.
# Typically installed in PREFIX/lib.
LIB_DEPENDS+=	iconv.2:libiconv-*:converters/libiconv
RUN_DEPENDS+=	:libiconv-*:converters/libiconv
